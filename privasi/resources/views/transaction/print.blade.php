@extends('layouts.app')
@section('content')
<div id="container">
  <div id="row" class="text-center">
    <h1>Menu</h1>
      
<div class="panel-body dash-table-markets no-padding overflow-table">
    <table class="table table-hover table-stripped table-bordered ">
      <thead style="background-color:#ffe139;"> 
         <tr>
                <th class="text-center">No</i></th>
                <th class="text-center">Tanggal</i></th>
                <th class="text-center">Pengguna</i></th>
                <th class="text-center">Order</i></th>
                <th class="text-center">Total </i></th>
         </tr>
      </thead>
       <tbody>
            @foreach ($transactions as $i => $transaction)
                
             <tr>
                 <td class="text-center"><p class="no-margin">{{++$i}}</p></td>
                 <td><p class="no-margin">{{$transaction->created_at}}</p></td>
                 <td><p class="no-margin">{{$transaction->id_user}}</p></td>
                 <td><p class="no-margin">{{$transaction->id_order}}</p></td>
                 <td><p class="no-margin">{{$transaction->total_bayar}}</p></td>
                 
              
            @endforeach
        </tbody>
      </table>
    </div>
  </div>

  </div>
</div>
@endsection


<script>
window.print();
</script>