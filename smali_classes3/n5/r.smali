.class public final synthetic Ln5/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ln5/x;


# direct methods
.method public synthetic constructor <init>(Ln5/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/r;->a:Ln5/x;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ln5/r;->a:Ln5/x;

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Ln5/x;->f(Ln5/x;[Ljava/lang/String;)V

    return-void
.end method
