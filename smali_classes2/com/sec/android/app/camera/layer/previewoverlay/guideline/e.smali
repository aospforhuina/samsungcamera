.class public final synthetic Lcom/sec/android/app/camera/layer/previewoverlay/guideline/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/e;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/e;->a:Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;->g(Lcom/sec/android/app/camera/layer/previewoverlay/guideline/LevelMeter;Landroid/animation/ValueAnimator;)V

    return-void
.end method
