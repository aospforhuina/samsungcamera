.class final Lq2/l$b;
.super Ljava/lang/Object;
.source "TreeTypeAdapter.java"

# interfaces
.implements Ln2/q;
.implements Ln2/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lq2/l;


# direct methods
.method private constructor <init>(Lq2/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq2/l$b;->a:Lq2/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lq2/l;Lq2/l$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lq2/l$b;-><init>(Lq2/l;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ln2/k;
    .locals 0

    iget-object p0, p0, Lq2/l$b;->a:Lq2/l;

    iget-object p0, p0, Lq2/l;->c:Ln2/e;

    invoke-virtual {p0, p1}, Ln2/e;->x(Ljava/lang/Object;)Ln2/k;

    move-result-object p0

    return-object p0
.end method
