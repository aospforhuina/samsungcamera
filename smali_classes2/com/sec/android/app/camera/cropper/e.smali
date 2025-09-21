.class public final synthetic Lcom/sec/android/app/camera/cropper/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$SelectButtonEventListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/cropper/DocumentScanActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/e;->a:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    return-void
.end method


# virtual methods
.method public final onTextViewClicked(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/e;->a:Lcom/sec/android/app/camera/cropper/DocumentScanActivity;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/cropper/DocumentScanActivity;->h(Lcom/sec/android/app/camera/cropper/DocumentScanActivity;Z)V

    return-void
.end method
