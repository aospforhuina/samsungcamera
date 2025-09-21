.class public final synthetic Lcom/sec/android/app/camera/shootingmode/portrait/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/n;->a:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/portrait/n;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/n;->a:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/n;->b:Z

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->q(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;ZLcom/airbnb/lottie/LottieAnimationView;)V

    return-void
.end method
