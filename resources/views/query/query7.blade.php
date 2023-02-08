@extends('layouts.base')


@section('styles')

@endsection


@section('content')
    <style>
        .dropify-wrapper .dropify-message p {
            font-size: 14px;
        }
        .tabss {
            padding: 15px;
        }
    </style>

    <div class="container-xxl flex-grow-1 container-p-y">
        <div class="row">
            <div class="card">
                <div class="d-flex" style="justify-content: space-between;align-items:center">
                    <div>
                        <h4 class="card-header">Query</h4>
                    </div>
                    <div>
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#createData">
                            Create Query
                        </button>
                    </div>
                </div>
                <div class="tabss table-responsive ">
                    <br>
                    <table id="productTable" class="table" style="width:100%">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>nama</th>
                                <th>jumlah_transaksi_2022</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody class="table-border-bottom-0">
                            @foreach ($konsumen as $key => $item)
                                <tr>
                                    <td>{{ $key + 1 }}</td>
                                    <td>{{ $item->nama }}</td>
                                    <td>{{ $item->jumlah_transaksi_2022 }}</td>
                                    <td style="width: 20%">
                                        <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                            >
                                            Update
                                        </button>
                                        <a class="btn btn-danger" href="">Delete</a>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>




@endsection

