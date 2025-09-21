.class public final synthetic Lcom/sec/android/app/camera/layer/menu/createmyfilter/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewSnapshotEventListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/b;->a:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onPreviewSnapshotShow()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/b;->a:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/b;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;->a(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuPresenter;Ljava/lang/String;)V

    return-void
.end method
