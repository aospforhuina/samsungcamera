.class Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$2;
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

    iput-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$2;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    const-string p1, "CreateSurface"

    const/4 p2, 0x0

    .line 1
    invoke-static {p1, p2}, Lcom/sec/android/app/TraceWrapper;->asyncTraceEnd(Ljava/lang/String;I)V

    const-string p1, "Surface - CreateSurface"

    .line 2
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "surfaceChanged : width="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " height="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "PreviewSurfaceManager"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$2;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->j(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/view/SurfaceView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$2;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->i(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewSurfaceStateChangedListener;

    move-result-object p0

    invoke-interface {p0, p2}, Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewSurfaceStateChangedListener;->onPreviewSurfaceChanged(Z)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "PreviewSurfaceManager"

    const-string/jumbo v0, "surfaceCreated"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$2;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->o(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Z)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$2;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->i(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewSurfaceStateChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewSurfaceStateChangedListener;->onPreviewSurfaceCreated()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "PreviewSurfaceManager"

    const-string/jumbo v0, "surfaceDestroyed"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$2;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->o(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Z)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$2;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->i(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewSurfaceStateChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewSurfaceStateChangedListener;->onPreviewSurfaceDestroyed()V

    return-void
.end method
