/*
  Warnings:

  - You are about to drop the column `sessioId` on the `Vote` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[sessionId,pollId]` on the table `Vote` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `sessionId` to the `Vote` table without a default value. This is not possible if the table is not empty.

*/
-- DropIndex
DROP INDEX "Vote_sessioId_pollId_key";

-- AlterTable
ALTER TABLE "Vote" DROP COLUMN "sessioId",
ADD COLUMN     "sessionId" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "Vote_sessionId_pollId_key" ON "Vote"("sessionId", "pollId");
