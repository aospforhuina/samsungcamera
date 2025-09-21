.class public final synthetic Lcom/sec/android/app/camera/engine/v4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/FunController;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/FunController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/v4;->a:Lcom/sec/android/app/camera/engine/FunController;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/v4;->a:Lcom/sec/android/app/camera/engine/FunController;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/FunController;->a(Lcom/sec/android/app/camera/engine/FunController;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
