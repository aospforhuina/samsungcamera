.class public final synthetic Lcom/sec/android/app/camera/shootingmode/portrait/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/j;->a:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/j;->a:Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;

    check-cast p1, Lcom/sec/android/app/camera/widget/NightShutter;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;->r(Lcom/sec/android/app/camera/shootingmode/portrait/PortraitBaseView;Lcom/sec/android/app/camera/widget/NightShutter;)V

    return-void
.end method
