.class public final synthetic Lcom/sec/android/app/camera/layer/previewoverlay/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:F


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;FFFFFFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->a:Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;

    iput p2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->b:F

    iput p3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->c:F

    iput p4, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->d:F

    iput p5, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->e:F

    iput p6, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->f:F

    iput p7, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->g:F

    iput p8, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->h:F

    iput p9, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->i:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->a:Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;

    iget v1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->b:F

    iget v2, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->c:F

    iget v3, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->d:F

    iget v4, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->e:F

    iget v5, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->f:F

    iget v6, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->g:F

    iget v7, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->h:F

    iget v8, p0, Lcom/sec/android/app/camera/layer/previewoverlay/r;->i:F

    move-object v9, p1

    invoke-static/range {v0 .. v9}, Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;->m(Lcom/sec/android/app/camera/layer/previewoverlay/PreviewOverlayLayerView;FFFFFFFFLandroid/animation/ValueAnimator;)V

    return-void
.end method
