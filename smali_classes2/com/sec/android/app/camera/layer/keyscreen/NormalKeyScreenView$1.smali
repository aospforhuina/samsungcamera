.class Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView$1;
.super Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;
.source "NormalKeyScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->getKeyEventListener()Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView$1;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView$1;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;

    iget-object v0, v0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v0, v0, Lo5/n0;->y:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;->isListTranslating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView$1;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;

    iget-object v0, v0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;->mNormalViewBinding:Lo5/n0;

    iget-object v0, v0, Lo5/n0;->y:Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/layer/keyscreen/shootingmodelist/ShootingModeListView;->refreshList()V

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/layer/listener/LayerKeyEventListenerAdapter;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView$1;->this$0:Lcom/sec/android/app/camera/layer/keyscreen/NormalKeyScreenView;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/layer/keyscreen/AbstractKeyScreenView;->handleKeyUpEvent(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
