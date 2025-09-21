.class final La0/h$c;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements La0/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La0/i$a<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private final a:Lx/a;

.field final synthetic b:La0/h;


# direct methods
.method constructor <init>(La0/h;Lx/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, La0/h$c;->b:La0/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, La0/h$c;->a:Lx/a;

    return-void
.end method


# virtual methods
.method public a(La0/v;)La0/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La0/v<",
            "TZ;>;)",
            "La0/v<",
            "TZ;>;"
        }
    .end annotation

    iget-object v0, p0, La0/h$c;->b:La0/h;

    iget-object p0, p0, La0/h$c;->a:Lx/a;

    invoke-virtual {v0, p0, p1}, La0/h;->E(Lx/a;La0/v;)La0/v;

    move-result-object p0

    return-object p0
.end method
