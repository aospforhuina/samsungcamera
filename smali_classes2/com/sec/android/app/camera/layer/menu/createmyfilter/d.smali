.class public final synthetic Lcom/sec/android/app/camera/layer/menu/createmyfilter/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/d;->a:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;

    iput p2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/d;->b:F

    iput p3, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/d;->c:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/d;->a:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;

    iget v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/d;->b:F

    iget p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/d;->c:F

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;->i(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterMenuView;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
