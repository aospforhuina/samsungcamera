.class public final synthetic Lcom/sec/android/app/camera/cropper/controller/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/cropper/controller/VisionTextTask$CompleteListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

.field public final synthetic b:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/controller/a;->a:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    iput-object p2, p0, Lcom/sec/android/app/camera/cropper/controller/a;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onComplete(Ll3/a;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/controller/a;->a:Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/controller/a;->b:Landroid/graphics/Rect;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;->a(Lcom/sec/android/app/camera/cropper/controller/DocumentScanController;Landroid/graphics/Rect;Ll3/a;)V

    return-void
.end method
