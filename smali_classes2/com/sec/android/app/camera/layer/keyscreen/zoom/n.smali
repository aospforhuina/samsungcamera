.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/zoom/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;

.field public final synthetic b:Landroidx/constraintlayout/widget/Guideline;

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;Landroidx/constraintlayout/widget/Guideline;FFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/n;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/n;->b:Landroidx/constraintlayout/widget/Guideline;

    iput p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/n;->c:F

    iput p4, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/n;->d:F

    iput p5, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/n;->e:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/n;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/n;->b:Landroidx/constraintlayout/widget/Guideline;

    iget v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/n;->c:F

    iget v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/n;->d:F

    iget v4, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/n;->e:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;->g(Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;Landroidx/constraintlayout/widget/Guideline;FFILandroid/animation/ValueAnimator;)V

    return-void
.end method
