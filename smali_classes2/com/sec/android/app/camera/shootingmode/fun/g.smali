.class public final synthetic Lcom/sec/android/app/camera/shootingmode/fun/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/g;->a:Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/g;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/g;->a:Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/g;->b:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;->e(Lcom/sec/android/app/camera/shootingmode/fun/FunPresenter;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
