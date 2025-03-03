<?php

namespace App\Livewire\Pages\Visitor\CartCheckoutResources\Forms;

use Livewire\Features\SupportFileUploads\TemporaryUploadedFile;
use Livewire\Form;

class CartCheckoutForm extends Form
{
  public string|null $first_name = null;
  public string|null $last_name = null;
  public string|null $floating_phone = null;
  public string|null $email = null;
  public string|null $address = null;
  public string|null $phone = null;

  public function rules(string|null $id = null): array
  {
    return [
      'masterForm.first_name' => 'required|string',
      'masterForm.last_name' => 'required|string',
      'masterForm.email' => 'required|string|unique:customers,email',
      'masterForm.phone' => 'required|string',
      'masterForm.address' => 'required|string',
    ];
  }

  public function attributes(): array
  {
    return [
      'masterForm.first_name' => 'Nama Pertama',
      'masterForm.last_name' => 'Nama Terakhir',
      'masterForm.email' => 'Email',
      'masterForm.phone' => 'No Telepon/Wa',
      'masterForm.address' => 'Alamat',
    ];
  }
}
