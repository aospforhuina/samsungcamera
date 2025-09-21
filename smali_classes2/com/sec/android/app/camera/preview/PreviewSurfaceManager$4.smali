.class Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;
.super Ljava/lang/Object;
.source "PreviewSurfaceManager.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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

    iput-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;->lambda$onSurfaceTextureSizeChanged$0(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method private synthetic lambda$onSurfaceTextureSizeChanged$0(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {v0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->g(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->g(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFunSurfaceTextureAvailable : width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PreviewSurfaceManager"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->n(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Z)V

    .line 3
    iget-object p2, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p2, p3}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->p(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Z)V

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->e(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Lcom/sec/android/app/camera/interfaces/Engine;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getFunController()Lcom/sec/android/app/camera/engine/FunController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/engine/FunController;->startFunProcessor(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    const-string p1, "PreviewSurfaceManager"

    const-string v0, "onFunSurfaceTextureDestroyed"

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->n(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Z)V

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    const-string p1, "PreviewSurfaceManager"

    const-string p2, "onFunSurfaceTextureSizeChanged"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->g(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/util/Size;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;->this$0:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    invoke-static {p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->l(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/sec/android/app/camera/preview/k;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/preview/k;-><init>(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;)V

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
