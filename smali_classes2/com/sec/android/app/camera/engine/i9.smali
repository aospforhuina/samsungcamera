.class public final synthetic Lcom/sec/android/app/camera/engine/i9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/SingleTakeManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/SingleTakeManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/i9;->a:Lcom/sec/android/app/camera/engine/SingleTakeManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/i9;->a:Lcom/sec/android/app/camera/engine/SingleTakeManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->b(Lcom/sec/android/app/camera/engine/SingleTakeManager;Ljava/lang/Integer;)V

    return-void
.end method
