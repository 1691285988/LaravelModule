{{--素材管理-添加音频--}}
@extends('admin.layout.main')

@section('content')
    <div class="col-md-6">
        <!-- general form elements -->
        <div class="box box-primary" style="margin-top: 24px;">
            <div class="box-header with-border">
                <h3 class="box-title">素材管理-添加音频</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form action="/wechat/create/audio" method="post" role="form">
                <div class="box-body">
                    <div class="form-group">
                        <input name="file" type="file" id="exampleInputFile">
                        <p class="help-block">语音限制: 2M，播放长度不超过60s，支持AMR\MP3格式</p>
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