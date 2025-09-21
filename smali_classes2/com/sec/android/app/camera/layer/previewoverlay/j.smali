.class public final synthetic Lcom/sec/android/app/camera/layer/previewoverlay/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/j;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    iput p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/j;->b:F

    iput p3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/j;->c:F

    iput p4, p0, Lcom/sec/android/app/camera/layer/previewoverlay/j;->d:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/j;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;

    iget v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/j;->b:F

    iget v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/j;->c:F

    iget p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/j;->d:F

    check-cast p1, Lcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->l(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/GuideLineView;FFFLcom/sec/android/app/camera/layer/previewoverlay/MultiAfView;)V

    return-void
.end method
