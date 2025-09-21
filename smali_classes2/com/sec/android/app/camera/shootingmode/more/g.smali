.class public final synthetic Lcom/sec/android/app/camera/shootingmode/more/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/more/MoreView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/g;->a:Lcom/sec/android/app/camera/shootingmode/more/MoreView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/g;->a:Lcom/sec/android/app/camera/shootingmode/more/MoreView;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/LayoutUpdater;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->i(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Lcom/sec/android/app/camera/interfaces/LayoutUpdater;)V

    return-void
.end method
