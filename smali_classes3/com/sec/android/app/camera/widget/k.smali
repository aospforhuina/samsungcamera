.class public final synthetic Lcom/sec/android/app/camera/widget/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/widget/NightScreenFlash;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/widget/NightScreenFlash;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/k;->a:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    iput p2, p0, Lcom/sec/android/app/camera/widget/k;->b:F

    iput p3, p0, Lcom/sec/android/app/camera/widget/k;->c:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/k;->a:Lcom/sec/android/app/camera/widget/NightScreenFlash;

    iget v1, p0, Lcom/sec/android/app/camera/widget/k;->b:F

    iget p0, p0, Lcom/sec/android/app/camera/widget/k;->c:F

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/camera/widget/NightScreenFlash;->b(Lcom/sec/android/app/camera/widget/NightScreenFlash;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
