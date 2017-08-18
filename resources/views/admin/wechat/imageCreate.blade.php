{{--素材管理-添加图片--}}
@extends('admin.layout.main')

@section('content')
    <div class="col-md-6">
        <!-- general form elements -->
        <div class="box box-primary" style="margin-top: 24px;">
            <div class="box-header with-border">
                <h3 class="box-title">素材管理-添加图片</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form">
                <div class="box-body">
                    <div class="form-group">
                        <input type="file" id="exampleInputFile">
                        <p class="help-block">图片限制: 2M，支持PNG\JPEG\JPG\GIF格式</p>
                    </div>
                </div>
                <!-- /.box-body -->
                <div class="box-footer">
                    <button type="submit" class="btn btn-primary">提交</button>
                </div>
            </form>
        </div>
        <!-- /.box -->
    </div>
@endsection