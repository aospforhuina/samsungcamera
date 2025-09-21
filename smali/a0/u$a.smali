.class La0/u$a;
.super Ljava/lang/Object;
.source "LockedResource.java"

# interfaces
.implements Lv0/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv0/a$d<",
        "La0/u<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La0/u$a;->b()La0/u;

    move-result-object p0

    return-object p0
.end method

.method public b()La0/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La0/u<",
            "*>;"
        }
    .end annotation

    new-instance p0, La0/u;

    invoke-direct {p0}, La0/u;-><init>()V

    return-object p0
.end method
