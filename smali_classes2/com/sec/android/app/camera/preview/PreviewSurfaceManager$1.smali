.class Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$1;
.super Ljava/lang/Object;
.source "PreviewSurfaceManager.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$1;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "extraSurfaceChanged, width="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PreviewSurfaceManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$1;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->g(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    if-ne p3, p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$1;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->g(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-ne p4, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$1;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->i(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewSurfaceStateChangedListener;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewSurfaceStateChangedListener;->onPreviewSurfaceChanged(Z)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$1;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p0, p2}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->m(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Z)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "PreviewSurfaceManager"

    const-string v0, "extraSurfaceCreated"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$1;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->g(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$1;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->g(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$1;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->f(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$1;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->g(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$1;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->g(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-interface {p1, v0, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "PreviewSurfaceManager"

    const-string v0, "extraSurfaceDestroyed"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$1;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->m(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Z)V

    return-void
.end method
