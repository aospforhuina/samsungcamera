.class public final synthetic Lcom/sec/android/app/camera/layer/previewoverlay/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/layer/previewoverlay/BottomBackground$BottomBackgroundChangeListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/s;->a:Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;

    return-void
.end method


# virtual methods
.method public final onBottomBackgroundChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/s;->a:Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->d(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;)V

    return-void
.end method
