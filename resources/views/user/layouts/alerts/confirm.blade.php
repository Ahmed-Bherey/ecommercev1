@if(auth('web')->check() == true && Auth::user()->confirmNumber == "")
<div class="confirm">
    <form action="{{ route('user.confirmNumberupdate') }}" method="POST">
        @csrf
        <div class="text-center"><i class="fa-regular fa-circle-xmark text-danger mt-2 mb-3"></i></div>
        <h3 class="mb-2">يجب دفع مبلغ 100 جنيه لتأكيد حسابك</h3>
        <input type="text" placeholder="ادخل رقم التحويل" name="confirmNumber">
        <button type="submit" class="btn btn-primary mb-2">submit</button>
    </form>
</div>
@endif


<style>
    .confirm {
        background-color: #09dafb;
        width: 30%;
        height: 200px;
        position: absolute;
        top: 10%;
        left: 50%;
        transform: translate(-50%, -10%);
        text-align: center;
        border-radius:20px;
    }

    .confirm input {
        width: 75%;
        border: none;
        padding: 10px 30px;
        border-radius: 23px;
        font-size: 20px;
    }

    .confirm div svg {
        font-size: 70px;
    }

    body {
        position: relative;
    }
</style>


