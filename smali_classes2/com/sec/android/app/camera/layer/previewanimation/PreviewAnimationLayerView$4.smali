.class Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PreviewAnimationLayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->startPreviewChangeAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;

.field final synthetic val$isBottomExtend:Z

.field final synthetic val$isSizeChanged:Z

.field final synthetic val$isTopExtend:Z

.field final synthetic val$nextPreviewRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;ZLandroid/graphics/Rect;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$4;->this$0:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$4;->val$isSizeChanged:Z

    iput-object p3, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$4;->val$nextPreviewRect:Landroid/graphics/Rect;

    iput-boolean p4, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$4;->val$isTopExtend:Z

    iput-boolean p5, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$4;->val$isBottomExtend:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-boolean p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$4;->val$isSizeChanged:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$4;->this$0:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$4;->val$nextPreviewRect:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$4;->val$isTopExtend:Z

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView$4;->val$isBottomExtend:Z

    invoke-static {p1, v0, v1, p0}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->p(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;Landroid/graphics/Rect;ZZ)V

    :cond_0
    return-void
.end method
