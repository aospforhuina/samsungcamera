.class public final synthetic Lw5/n0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw5/n0;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lw5/n0;->a:Ljava/lang/String;

    check-cast p1, Lw5/o0;

    invoke-static {p0, p1}, Lw5/o0;->b(Ljava/lang/String;Lw5/o0;)Z

    move-result p0

    return p0
.end method
