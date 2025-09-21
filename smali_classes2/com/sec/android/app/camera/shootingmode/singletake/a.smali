.class public final synthetic Lcom/sec/android/app/camera/shootingmode/singletake/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/Engine$SingleTakeEventListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/singletake/a;->a:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;

    return-void
.end method


# virtual methods
.method public final onInfo(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/singletake/a;->a:Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;->d(Lcom/sec/android/app/camera/shootingmode/singletake/SingleTakePresenter;I)V

    return-void
.end method
