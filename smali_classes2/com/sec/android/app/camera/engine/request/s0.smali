.class public final synthetic Lcom/sec/android/app/camera/engine/request/s0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/request/s0;->a:Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/request/s0;->a:Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;->a(Lcom/sec/android/app/camera/engine/request/MakerConnectionInfo;Ljava/lang/Integer;)V

    return-void
.end method
