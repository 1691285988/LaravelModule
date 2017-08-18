{{--素材管理-添加视频--}}
@extends('admin.layout.main')

@section('content')
    <div class="col-md-6">
        <!-- general form elements -->
        <div class="box box-primary" style="margin-top: 24px;">
            <div class="box-header with-border">
                <h3 class="box-title">素材管理-添加视频</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form action="/wechat/create/video" enctype="multipart/form-data" method="post" role="form">
                <div class="box-body">
                    <div class="form-group">
                        <input name="video" type="file" id="exampleInputFile">
                        <p class="help-block">视频限制: 10MB，支持MP4格式</p>
                    </div>
                </div>
                @include('layout/errorMsg')
                <!-- /.box-body -->
                <div class="box-footer">
                    <button type="submit" class="btn btn-primary">提交</button>
                </div>
            </form>
        </div>
        <!-- /.box -->
    </div>
@endsection