.class public final synthetic Lh/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lh/h;


# direct methods
.method public synthetic constructor <init>(Lh/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/m;->a:Lh/h;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lh/m;->a:Lh/h;

    invoke-static {p0}, Lh/p;->e(Lh/h;)Lh/v;

    move-result-object p0

    return-object p0
.end method
