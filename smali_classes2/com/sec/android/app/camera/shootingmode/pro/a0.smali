.class public final synthetic Lcom/sec/android/app/camera/shootingmode/pro/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/pro/proslidercontainer/ProSliderListener$ProSliderValueChangedListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/a0;->a:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;

    return-void
.end method


# virtual methods
.method public final onSliderValueChanged(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/a0;->a:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;->h(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteView;II)V

    return-void
.end method
