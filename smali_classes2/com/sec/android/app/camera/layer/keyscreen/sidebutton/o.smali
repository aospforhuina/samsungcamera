.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonPresenter;

.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/o;->a:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonPresenter;

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/o;->a:Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonPresenter;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/o;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CameraSettings;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonPresenter;->a(Lcom/sec/android/app/camera/layer/keyscreen/sidebutton/RightButtonPresenter;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/sec/android/app/camera/interfaces/CameraSettings;)V

    return-void
.end method
