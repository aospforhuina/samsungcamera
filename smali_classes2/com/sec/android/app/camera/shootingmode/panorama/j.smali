.class public final synthetic Lcom/sec/android/app/camera/shootingmode/panorama/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/util/AnimationUtil$AnimationEndListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaView;

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/panorama/j;->a:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaView;

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/panorama/j;->b:F

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/panorama/j;->a:Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaView;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/panorama/j;->b:F

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaView;->m(Lcom/sec/android/app/camera/shootingmode/panorama/PanoramaView;FLandroid/view/animation/Animation;)V

    return-void
.end method
