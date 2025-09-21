.class public final synthetic Lcom/sec/android/app/camera/shootingmode/common/manager/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/a;->a:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/common/manager/a;->a:Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$IntervalEventListener;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager;->a(Lcom/sec/android/app/camera/interfaces/Engine$ShutterTimerManager$TimerMode;Lcom/sec/android/app/camera/shootingmode/common/manager/IntervalManager$IntervalEventListener;)V

    return-void
.end method
