.class public final La7/i$a;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements La7/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La7/i;->b(Lu6/p;)La7/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La7/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lu6/p;


# direct methods
.method public constructor <init>(Lu6/p;)V
    .locals 0

    iput-object p1, p0, La7/i$a;->a:Lu6/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, La7/i$a;->a:Lu6/p;

    invoke-static {p0}, La7/i;->a(Lu6/p;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
