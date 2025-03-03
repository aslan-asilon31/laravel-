<?php

namespace App\Livewire\Pages\Admin\Contents\ProductContentResources;

use App\Livewire\Pages\Admin\Contents\ProductContentResources\Forms\ProductContentReviewForm;
use Livewire\Component;
use Livewire\Attributes\On; 


class ProductContentReviewCrud extends Component
{

  public bool $crudModal = false;


  public function render()
  {
    return view('livewire.pages.admin.contents.product-content-resources.product-content-review-crud')
      ->title($this->title);
  }

  #[\Livewire\Attributes\Locked]
  public ?string $masterId;
  
  public string $title = 'Product Content Review';
  public string $url = '/product-contents';
  public string $redirectUrl = '/product-content-reviews';

  use \App\Helpers\FormHook\Traits\WithFormHook;
  use \Mary\Traits\Toast;

  #[\Livewire\Attributes\Locked]
  public null|string $id = null;
  #[\Livewire\Attributes\Locked]
  public null|string $productContentReviewId = null;
  private string $model = \App\Models\ProductContent::class;
  
  #[\Livewire\Attributes\Locked]
  protected $masterModel = \App\Models\ProductContentReview::class;

  #[\Livewire\Attributes\Locked]
  protected $parentModel = \App\Models\ProductContent::class;

  #[\Livewire\Attributes\Locked]
  public string $readonly = '';

  #[\Livewire\Attributes\Locked]
  public bool $isReadonly = false;

  #[\Livewire\Attributes\Locked]
  public string $disabled = '';

  #[\Livewire\Attributes\Locked]
  public bool $isDisabled = false;

  #[\Livewire\Attributes\Locked]
  public array $options = [];
  
  public ProductContentReviewForm $masterForm;

  private string $uploadFolderName = 'files/images/product-content-reviews';
  private string $baseImageName = 'product_content_review_image';
  public bool $myModalProductContentReviewForm = false;


  public array $productContent = [];

  public function edit($productContentReviewId)
  {
    $this->masterId = $productContentReviewId;
    $this->productContentReviewId = $productContentReviewId;

    $record = $this->model::findOrFail($this->id)
      ->productContentReviews()
      ->first()->toArray();

    $this->masterForm->fill($record);
    $this->crudModal = true;

  }

  public function update()
  {
    $validatedForm = $this->validate(
      $this->masterForm->rules(),
      [],
      $this->masterForm->attributes()
    )['masterForm'];

    $masterData = $this->masterModel::findOrFail($this->masterId);

    \Illuminate\Support\Facades\DB::beginTransaction();
    try {
      $validatedForm['updated_by'] = auth()->user()->username;
      $masterData->update($validatedForm);

      \Illuminate\Support\Facades\DB::commit();

      $this->masterId = null;
      $this->masterForm->reset();
      $this->crudModal = false;
      $this->initialize();
      $this->success('Data has been updated');
    } catch (\Throwable $th) {
      \Illuminate\Support\Facades\DB::rollBack();

      \Log::error('Store data failed: ' . $th->getMessage());


      $this->error('Data failed to update');
    }
  }

  public function createProductContentReview()
  {
    $this->productContentReviewId = null;
    $this->masterForm->reset();

    $this->masterForm->ordinal = (int) $this->model::findOrFail($this->id)
      ?->productContentReviews()
      ?->max('ordinal') + 1;

    $this->myModalProductContentReviewForm = true;
  }

  public function storeProductContentReview()
  {
    $validatedForm = $this->validate(
      $this->masterForm->rules($this->productContentReviewId),
      [],
      $this->masterForm->attributes()
    )['masterForm'];


    $validatedForm['created_by'] = auth()->user()->username;

    $record = $this->model::findOrFail($this->id);
    $record->productContentReviews()
      ->create($validatedForm);

      $this->toast(
        type: 'success',
        title: 'Data has been stored',
        description: "data has been stored",               
        position: 'toast-top toast-end',    
        icon: 'o-information-circle',      
        css: 'alert-info',                  
        timeout: 3000,                      
        redirectTo: null                    
    );

    $this->redirect($this->redirectUrl . "/edit/{$this->id}", true);
  }

  public function editProductContentReview($productContentReviewId)
  {
    $this->productContentReviewId = $productContentReviewId;
    $record = $this->model::findOrFail($this->id)
      ->productContentReviews()
      ->findOrFail($productContentReviewId)
      ->toArray();

    $this->masterForm->fill($record);
    // $this->modal()->open('productContentReviewCardModal');
    $this->myModalProductContentReviewForm = true;

  }

  public function updateProductContentReview($productContentReviewId)
  {
    $validatedForm = $this->validate(
      $this->masterForm->rules($this->productContentReviewId),
      [],
      $this->masterForm->attributes()
    )['masterForm'];

    $validatedForm['updated_by'] = auth()->user()->username;

    $record = $this->model::findOrFail($this->id)
      ->productContentReviews()
      ->findOrFail($productContentReviewId)
      ->update($validatedForm);


      $this->toast(
        type: 'success',
        title: 'Data has been stored',
        description: "data has been updated",               
        position: 'toast-top toast-end',    
        icon: 'o-information-circle',      
        css: 'alert-info',                  
        timeout: 3000,                      
        redirectTo: null                    
    );

    $this->redirect($this->redirectUrl . "/edit/{$this->id}", true);
  }

  public function delete($productContentReviewId)
  {
    $record = $this->model::findOrFail($this->id)
      ->productContentReviews()
      ->findOrFail($productContentReviewId);

    $record->delete();

    $this->toast(
      type: 'success',
      title: 'Data has been stored',
      description: "data has been deleted",               
      position: 'toast-top toast-end',    
      icon: 'o-information-circle',      
      css: 'alert-info',                  
      timeout: 3000,                      
      redirectTo: null                    
  );

    $this->redirect($this->redirectUrl . "/edit/{$this->id}", true);
  }


  public function create()
  {
    $this->productContentReviewId = null;
    $this->masterForm->reset();
    $this->masterForm->ordinal = (int) $this->model::findOrFail($this->id)
      ?->productContentReviews()
      ?->max('ordinal') + 1;
    $this->crudModal = true;
  }

  public function store()
  {
    $validatedForm = $this->validate(
      $this->masterForm->rules($this->productContentReviewId),
      [],
      $this->masterForm->attributes()
    )['masterForm'];

    $validatedForm['created_by'] = auth()->user()->username;

    $record = $this->model::findOrFail($this->id);
    $record->productContentReviews()
      ->create($validatedForm);

    $this->toast(
        type: 'success',
        title: 'Data has been stored',
        description: "data has been stored",               
        position: 'toast-top toast-end',    
        icon: 'o-information-circle',      
        css: 'alert-info',                  
        timeout: 3000,                      
        redirectTo: null                    
    );
    $this->crudModal = false;

    $this->dispatch('product-content-review-created'); 
    // $this->redirect($this->redirectUrl . "/edit/{$this->id}", true);
  }


  
  public function mount()
  {

    if ($this->id && $this->readonly) {
      $this->title .= ' (Show)';
      $this->show();
    } else if ($this->id) {
      $this->title .= ' (Edit)';
      $this->edit($this->id);
    } else {
      $this->title .= ' (Create)';
      $this->create();
    }

    $this->initialize();

    $this->crudModal = false;
  }

  #[On('product-content-review-created')] 
  public function initialize()
  {
    $this->productContent = $this->parentModel::with([
      'product',
      'productContentReviews' => function ($q) {
        $q->orderBy('product_content_Reviews.ordinal', 'asc');
      }
    ])
      ->findOrFail($this->id)
      ->toArray();
  }


}
