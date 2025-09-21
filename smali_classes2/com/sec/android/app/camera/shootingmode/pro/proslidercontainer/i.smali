.class public final synthetic Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/i;->a:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/i;->b:Z

    iput p3, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/i;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/i;->a:Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/i;->b:Z

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/i;->c:I

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;->h(Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProLiteSliderContainerView;ZI)V

    return-void
.end method
