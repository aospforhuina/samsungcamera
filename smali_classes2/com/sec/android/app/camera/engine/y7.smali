.class public final synthetic Lcom/sec/android/app/camera/engine/y7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/RequestEventManager;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/RequestEventManager;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/y7;->a:Lcom/sec/android/app/camera/engine/RequestEventManager;

    iput p2, p0, Lcom/sec/android/app/camera/engine/y7;->b:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/y7;->a:Lcom/sec/android/app/camera/engine/RequestEventManager;

    iget p0, p0, Lcom/sec/android/app/camera/engine/y7;->b:I

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/engine/RequestEventManager;->i(Lcom/sec/android/app/camera/engine/RequestEventManager;ILjava/lang/Integer;)V

    return-void
.end method
