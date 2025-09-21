.class public abstract Lc7/c1;
.super Lc7/c0;
.source "Executors.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc7/c1$a;
    }
.end annotation


# static fields
.field public static final a:Lc7/c1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc7/c1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc7/c1$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lc7/c1;->a:Lc7/c1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc7/c0;-><init>()V

    return-void
.end method
