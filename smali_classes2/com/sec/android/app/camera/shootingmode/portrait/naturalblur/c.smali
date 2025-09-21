.class public final synthetic Lcom/sec/android/app/camera/shootingmode/portrait/naturalblur/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/widget/y;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/widget/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/naturalblur/c;->a:Lcom/sec/android/app/camera/widget/y;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/naturalblur/c;->a:Lcom/sec/android/app/camera/widget/y;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/naturalblur/NaturalBlurRectView;->a(Lcom/sec/android/app/camera/widget/y;Landroid/animation/ValueAnimator;)V

    return-void
.end method
