<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            @can('system')
                <li class="treeview active">
                    <a href="#">
                        <i class="fa fa-dashboard"></i> <span>系统管理</span>
                        <span class="pull-right-container"></span>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="/admin/permissions"><i class="fa fa-circle-o"></i>权限管理</a></li>
                        <li><a href="/admin/users"><i class="fa fa-circle-o"></i>用户管理</a></li>
                        <li><a href="/admin/roles"><i class="fa fa-circle-o"></i>角色管理</a></li>
                    </ul>
                </li>
            @endcan
            @can('post')
                <li class="active treeview">
                    <a href="/admin/posts">
                        <i class="fa fa-dashboard"></i> <span>文章管理</span>
                    </a>
                </li>
            @endcan
            @can('topic')
                <li class="active treeview">
                    <a href="/admin/topics">
                        <i class="fa fa-dashboard"></i> <span>专题管理</span>
                    </a>
                </li>
            @endcan
            @can('notice')
                <li class="active treeview">
                    <a href="/admin/notices">
                        <i class="fa fa-dashboard"></i> <span>通知管理</span>
                    </a>
                </li>
            @endcan
            {{--微信管理--}}
            <li class="active treeview">
                <a href="#">
                    <i class="fa fa-share"></i> <span>微信管理</span>
                    <span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>
                </a>
                <ul class="treeview-menu">
                    <li class="active treeview"><a href="#">
                            <i class="fa fa-circle-o"></i>素材管理<span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span></a>
                        <ul class="treeview-menu">
                            <li><a href="/admin/wechat/material/image"><i class="fa fa-circle-o"></i>图片添加</a></li>
                            <li><a href="/admin/wechat/material/audio"><i class="fa fa-circle-o"></i>音频添加</a></li>
                            <li><a href="/admin/wechat/material/video"><i class="fa fa-circle-o"></i>视频添加</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
