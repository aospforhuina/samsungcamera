.class public final Ly2/h0;
.super Ly2/u;
.source "TextParsedResult.java"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Ly2/v;->f:Ly2/v;

    invoke-direct {p0, v0}, Ly2/u;-><init>(Ly2/v;)V

    .line 2
    iput-object p1, p0, Ly2/h0;->b:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Ly2/h0;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ly2/h0;->b:Ljava/lang/String;

    return-object p0
.end method
