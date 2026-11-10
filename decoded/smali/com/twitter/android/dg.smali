.class final Lcom/twitter/android/dg;
.super Lcom/twitter/android/client/m;


# instance fields
.field private synthetic a:Lcom/twitter/android/ConversationActivity;


# direct methods
.method private constructor <init>(Lcom/twitter/android/ConversationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/dg;->a:Lcom/twitter/android/ConversationActivity;

    invoke-direct {p0}, Lcom/twitter/android/client/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ConversationActivity;Lcom/twitter/android/br;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twitter/android/dg;-><init>(Lcom/twitter/android/ConversationActivity;)V

    return-void
.end method


# virtual methods
.method public final g(Lcom/twitter/android/client/n;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/twitter/android/dg;->a:Lcom/twitter/android/ConversationActivity;

    invoke-virtual {v0, p2}, Lcom/twitter/android/ConversationActivity;->e(Ljava/lang/String;)Lcom/twitter/android/cj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/dg;->a:Lcom/twitter/android/ConversationActivity;

    invoke-virtual {v0, p5, p6}, Lcom/twitter/android/ConversationActivity;->a(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/twitter/android/dg;->a:Lcom/twitter/android/ConversationActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/twitter/android/ConversationActivity;->d(I)V

    iget-object v0, p0, Lcom/twitter/android/dg;->a:Lcom/twitter/android/ConversationActivity;

    iget-object v0, v0, Lcom/twitter/android/ConversationActivity;->a:Lcom/twitter/android/ch;

    invoke-virtual {v0}, Lcom/twitter/android/ch;->notifyDataSetChanged()V

    goto :goto_0
.end method
