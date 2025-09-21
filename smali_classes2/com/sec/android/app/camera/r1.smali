.class public final synthetic Lcom/sec/android/app/camera/r1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/CoverManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/CoverManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/r1;->a:Lcom/sec/android/app/camera/CoverManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/r1;->a:Lcom/sec/android/app/camera/CoverManager;

    invoke-static {p0}, Lcom/sec/android/app/camera/CoverManager;->a(Lcom/sec/android/app/camera/CoverManager;)V

    return-void
.end method
