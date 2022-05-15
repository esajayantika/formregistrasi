@extends('layouts.main')

@section('container')
<div class="row justify-content-center">
	<div class="col-lg-5">
<main class="form-registration w-100 m-auto">
  <form>
  
    <h1 class="h3 mb-3 fw-normal text-center">Form Daftar</h1>

     <div class="form-floating">
      <input type="text" name="name" class="form-control rounded-top" id="name" placeholder="Name">
      <label for="name">Name</label>
    </div>
    <div class="form-floating">
      <input type="text" name="alamat" class="form-control" id="alamat" placeholder="alamat">
      <label for="alamat">Alamat</label>
    </div>
    <div class="form-floating">
      <input type="text" name="notelp" class="form-control" id="notelp" placeholder="notelp">
      <label for="notelp">No.Telepon</label>
    </div>
    <div class="form-floating">
      <input class="form-control" type="file" id="gambar" placeholder="gambar" name="gambar">
      <label for="gambar" class="form-label"></label>
    </div>
    <div class="form-floating">
      <input type="email" name= "email" class="form-control" id="email" placeholder="email">
      <label for="email">Email</label>
    </div>
    <div class="form-floating">
      <input type="password" name="password" class="form-control rounded-bottom" id="password" placeholder="Password">
      <label for="password">Password</label>
    </div>

    <button class="w-100 btn btn-lg btn-primary mt-3" type="submit">Register</button>
  </form> 
<small class="d-block text-center mt-3">sudah terdaftar? <a href="/login">Login</a></small>
</main>
	</div>
</div>

@endsection