.class public final synthetic Lcom/sec/android/app/camera/shootingmode/pro/b1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsManager$TipsButtonVisibilityChangeRequestListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/b1;->a:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    return-void
.end method


# virtual methods
.method public final onVisibilityChangeRequested(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/b1;->a:Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;->n(Lcom/sec/android/app/camera/shootingmode/pro/ProPresenter;Z)V

    return-void
.end method
