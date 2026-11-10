.class final Lcom/twitter/android/cp;
.super Landroid/widget/Filter;


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:Landroid/net/Uri;

.field private synthetic c:Lcom/twitter/android/do;


# direct methods
.method constructor <init>(Lcom/twitter/android/do;Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/twitter/android/cp;->c:Lcom/twitter/android/do;

    iput-object p2, p0, Lcom/twitter/android/cp;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/twitter/android/cp;->b:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 7

    new-instance v6, Landroid/widget/Filter$FilterResults;

    invoke-direct {v6}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/twitter/android/cp;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/cp;->b:Landroid/net/Uri;

    sget-object v2, Lcom/twitter/android/dv;->a:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "username LIKE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "LOWER(username) ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, v6, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v0, v6, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :cond_0
    return-object v6
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Landroid/database/Cursor;

    iget-object v1, p0, Lcom/twitter/android/cp;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    iget-object v1, p0, Lcom/twitter/android/cp;->c:Lcom/twitter/android/do;

    invoke-virtual {v1, v0}, Lcom/twitter/android/do;->changeCursor(Landroid/database/Cursor;)V

    :cond_0
    iget-object v0, p0, Lcom/twitter/android/cp;->c:Lcom/twitter/android/do;

    invoke-virtual {v0}, Lcom/twitter/android/do;->notifyDataSetChanged()V

    return-void
.end method
