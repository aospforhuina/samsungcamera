.class public final synthetic Lcom/sec/android/app/camera/preview/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

.field public final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/preview/e;->a:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    iput-object p2, p0, Lcom/sec/android/app/camera/preview/e;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/preview/e;->a:Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/e;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->a(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Landroid/graphics/Bitmap;I)V

    return-void
.end method
