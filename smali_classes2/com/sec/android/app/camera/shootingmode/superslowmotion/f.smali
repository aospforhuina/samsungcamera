.class public final synthetic Lcom/sec/android/app/camera/shootingmode/superslowmotion/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/f;->a:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/superslowmotion/f;->a:Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;->l(Lcom/sec/android/app/camera/shootingmode/superslowmotion/SuperSlowMotionView;Landroid/animation/ValueAnimator;)V

    return-void
.end method
