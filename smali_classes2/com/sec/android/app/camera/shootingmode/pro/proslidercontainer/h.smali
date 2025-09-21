.class public final synthetic Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

.field public final synthetic b:Lcom/sec/android/app/camera/interfaces/AspectRatio;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;Lcom/sec/android/app/camera/interfaces/AspectRatio;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/h;->a:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/h;->b:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/h;->a:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/h;->b:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->j(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;Lcom/sec/android/app/camera/interfaces/AspectRatio;)V

    return-void
.end method
