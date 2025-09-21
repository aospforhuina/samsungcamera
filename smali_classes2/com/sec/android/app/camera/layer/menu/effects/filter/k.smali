.class public final synthetic Lcom/sec/android/app/camera/layer/menu/effects/filter/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/util/AnimationUtil$AnimationEndListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/k;->a:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/k;->a:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->p(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;Landroid/view/animation/Animation;)V

    return-void
.end method
