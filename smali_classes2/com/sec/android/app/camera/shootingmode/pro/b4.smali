.class public final synthetic Lcom/sec/android/app/camera/shootingmode/pro/b4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderValueChangedListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/pro/ProView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/ProView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/b4;->a:Lcom/sec/android/app/camera/shootingmode/pro/ProView;

    return-void
.end method


# virtual methods
.method public final onSliderValueChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/b4;->a:Lcom/sec/android/app/camera/shootingmode/pro/ProView;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProView;->h(Lcom/sec/android/app/camera/shootingmode/pro/ProView;II)V

    return-void
.end method
