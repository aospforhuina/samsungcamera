.class public final synthetic Lm3/r;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lm3/w;


# direct methods
.method public synthetic constructor <init>(Lm3/w;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/r;->a:Lm3/w;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lm3/r;->a:Lm3/w;

    check-cast p1, [Landroid/graphics/Point;

    invoke-static {p0, p1}, Lm3/w;->q(Lm3/w;[Landroid/graphics/Point;)V

    return-void
.end method
