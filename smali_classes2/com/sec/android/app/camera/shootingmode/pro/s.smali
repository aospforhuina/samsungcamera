.class public final synthetic Lcom/sec/android/app/camera/shootingmode/pro/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/s;->a:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;

    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/s;->a:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->h(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;Lcom/sec/android/app/camera/shootingmode/pro/tips/ProTipsButton$ProTipsButtonEventListener$EventId;)V

    return-void
.end method
